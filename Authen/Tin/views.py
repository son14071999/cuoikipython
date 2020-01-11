from django.shortcuts import render
from django.views import View
from Tin.models import Tin, LoaiTin, TheLoai, Comment
from django.http import HttpResponse
from datetime import datetime
from Tag.models import Tag
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

def phantrang(request, tins, k):
    t = Paginator(tins, k)
    page = request.GET.get('page')
    try:
        tin = t.page(page)
    except PageNotAnInteger:
        tin = t.page(1)
    except EmptyPage:
        tin = t.page(t.num_pages)
    return tin

def phantrang1(request, tins, k):
    t = Paginator(tins, k)
    page = request.POST.get('page')
    try:
        tin = t.page(page)
    except PageNotAnInteger:
        tin = t.page(1)
    except EmptyPage:
        tin = t.page(t.num_pages)
    return tin


def xlThoiGian(create_at):
    tg = datetime.now()-create_at
    return tg
# Create your views here.
def getMenu():
    theloai_base = TheLoai.objects.all()
    lt_base = dict()
    for tl in theloai_base:
        lt_base[tl] = LoaiTin.objects.filter(idTheLoai=tl.pk)
    tag = Tag.objects.order_by()
    if len(tag)>50:
        tag = tag[:50]
    return theloai_base, lt_base, tag


# Lọc dữ liệu: column: tên cột đc lọc, k: số lượng kq lấy tối đa
def locDl(column, k , kieu):
    a = []
    list_tin = Tin.objects.order_by(column)
    if kieu == "-":
        list_tin = list_tin[::-1]
    if k==-1 or len(list_tin)<k:
        return list_tin
    return list_tin[:k]

class getTrangchu(View):
    def get(self, request):
        theloai_base, lt_base, tag = getMenu()
        tinxemnhieu = locDl('view', 5, "-")
        tinmoi = locDl('create_at',-1,'-')
        tinmoi = phantrang(request, tinmoi, 8)
        return render(request, 'homepage/trangchu.html',{'tag':tag,'theloai_base':theloai_base, 'lt_base':lt_base, 'tin': tinmoi,'tinxemnhieu':tinxemnhieu})



class getTheloai(View):
    def get(self, request, theloaiPost):
        theloai_base, lt_base, tag = getMenu()
        tinxemnhieu = locDl('view', 5, "-")

        tl = TheLoai.objects.filter(tenKhongDau=theloaiPost).first()
        list_tin = Tin.objects.filter(id_tl=tl.pk).order_by('-create_at')
        tin = phantrang(request, list_tin,5)
        return render(request, 'homepage/theloai.html',
                      {'tag':tag,'theloai_base': theloai_base, 'lt_base': lt_base, 'tinxemnhieu': tinxemnhieu
                          , 'tin': tin, 'theloai': tl})


class getTin(View):
    def static(self, request, tentin):
        theloai_base, lt_base,tag = getMenu()
        tin = Tin.objects.filter(tieuDeKhongDau=tentin).first()
        tin.view = tin.view + 1
        tin.save()
        theloai = tin.id_tl
        listtin = Tin.objects.order_by('create_at')
        tinlienquan = []
        cungtacgia = []
        for i in listtin:
            if (i.id_tl == theloai):
                tinlienquan.append(i)
            if(i.tacGia == tin.tacGia):
                cungtacgia.append(i)
        if (len(tinlienquan) > 5):
            tinlienquan = tinlienquan[:5]
        if (len(tinlienquan) > 5):
            cungtacgia = cungtacgia[:5]
        comments = Comment.objects.filter(id_Tin=tin.pk)
        return theloai_base,lt_base,tin,tinlienquan,comments,tag,cungtacgia
    def get(self, request, tentin):
        theloai_base, lt_base, tin, tinlienquan, comments,tag, cungtacgia= self.static(request,tentin)
        return render(request, 'homepage/tin.html',
                      {'tag':tag,'theloai_base': theloai_base, 'lt_base': lt_base, 'tin': tin,'tinlienquan':tinlienquan, 'comments': comments,'cungtacgia':cungtacgia})
    def post(self, request, tentin):
        theloai_base, lt_base, tin, tinlienquan, comments, tag, cungtacgia= self.static(request, tentin)
        q = tin.comment_set.create(name=request.POST['name'], gmail=request.POST['gmail'],nd=request.POST['nd'])
        q.save()
        return render(request, 'homepage/tin.html',
                      {'tag':tag,'theloai_base': theloai_base, 'lt_base': lt_base, 'tin': tin, 'tinlienquan': tinlienquan,
                       'comments': comments,'cungtacgia':cungtacgia})

class getLoaiTin(View):
    def get(self, request,theloaiPost, tenloaitin):
        theloai_base, lt_base, tag = getMenu()
        tinxemnhieu = locDl('view',5, "-")

        tl = TheLoai.objects.filter(tenKhongDau=theloaiPost).first()
        lt = LoaiTin.objects.filter(tenKhongDau=tenloaitin).first()
        tin = Tin.objects.filter(id_lt=lt.pk).order_by('-create_at')
        tin = phantrang(request, tin, 3)
        return render(request, 'homepage/theloai.html',
                      {'tag':tag,'theloai_base': theloai_base, 'lt_base': lt_base, 'tinxemnhieu': tinxemnhieu
                          , 'tin': tin, 'theloai': tl,'loaitin': lt})

def tag(request):
    theloai_base, lt_base, tag = getMenu()
    tinxemnhieu = locDl('view', 5, "-")
    if request.method == 'POST':
        keyword = request.POST['search']
        if keyword:
            keywords = Tag.objects.all()
            tt = False
            for k in keywords:
                if k.nd == keyword:
                    tt = True
                    break
            if tt:
                a = Tag.objects.filter(nd=keyword).first()
                a.soLuong = a.soLuong + 1
                a.save()
            else:
                a = Tag(nd=keyword)
                a.save()
            listdt = Tin.objects.order_by()
            kq = []
            for i in range(len(listdt)):
                if listdt[i].tieuDe.__contains__(keyword) or listdt[i].ndTomTat.__contains__(keyword):
                    listdt[i].tieuDe = listdt[i].tieuDe.replace(keyword, "<mark style='background: #FCF902;'>" + str(
                        keyword) + "</mark>")
                    listdt[i].ndTomTat = listdt[i].ndTomTat.replace(keyword,
                                                                    "<mark style='background: #FCF902;'>" + str(
                                                                        keyword) + "</mark>")
                    kq.append(listdt[i])
            if kq == []:
                message = 'không tìm thấy kết quả của ' + str(keyword)
                return render(request, 'homepage/search.html',
                              {'tag': tag, 'theloai_base': theloai_base, 'lt_base': lt_base, 'tinxemnhieu': tinxemnhieu,
                               'message': message})
            else:
                return render(request, 'homepage/search.html',
                              {'tag': tag, 'theloai_base': theloai_base, 'lt_base': lt_base, 'tinxemnhieu': tinxemnhieu,
                               'tin': kq, 'count': len(kq), 'keyword': keyword})

def search(request):
    theloai_base, lt_base,tag = getMenu()
    tinxemnhieu = locDl('view', 5, "-")
    if request.method=='POST':
        keyword = request.POST['search']
        listdt = Tin.objects.order_by('-create_at')
        kq = []
        for i in range(len(listdt)):
            print("keyword = ",keyword)
            print("tieude = ", listdt[i].tieuDe)
            print("ndtomtat = ", listdt[i].ndTomTat)
            if listdt[i].tieuDe.__contains__(keyword) or listdt[i].ndTomTat.__contains__(keyword):
                listdt[i].tieuDe = listdt[i].tieuDe.replace(keyword,"<mark style='background: #FCF902;'>"+str(keyword)+"</mark>")
                listdt[i].ndTomTat = listdt[i].ndTomTat.replace(keyword, "<mark style='background: #FCF902;'>" + str(keyword) + "</mark>")
                kq.append(listdt[i])
        if kq == []:
            message = 'không tìm thấy kết quả của '+str(keyword)
            return render(request,'homepage/search.html',{'tag':tag,'theloai_base':theloai_base, 'lt_base':lt_base,'tinxemnhieu':tinxemnhieu, 'message': message})
        else:
            return render(request, 'homepage/search.html',{'tag':tag,'theloai_base': theloai_base, 'lt_base': lt_base, 'tinxemnhieu': tinxemnhieu,'tin': kq, 'count':len(kq),'keyword':keyword})
