package net.togogo.utils;

public class PageSupport {
    //当前页数
    private int pageNo;

    //总页数
    private  int totalPageCount;

    //页面的大小
    private int pageSize;

    //数据的总数量
    private int Count;

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        if(pageNo>0){
            this.pageNo = pageNo;
        }
    }

    public int getTotalPageCount() {
        return totalPageCount;
    }

    public void setTotalPageCount(int totalPageCount) {
        if(totalPageCount>0) {
            this.totalPageCount = totalPageCount;
        }
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        if(pageSize>0){
        this.pageSize = pageSize;
        }
    }

    public int getCount() {
        return Count;
    }

    public void setCount(int Count) {
        if(Count>0) {
            this.Count = Count;
            //得到总页数
            this.totalPageCountDS();
        }
    }


    //计算总页数
    public void totalPageCountDS(){
        if(this.Count % this.pageSize == 0){
            this.totalPageCount =this.Count/this.pageSize;
        }else if(this.Count % this.pageSize != 0){
            this.totalPageCount =(this.Count/this.pageSize)+1;
        }else{
            this.totalPageCount =1;
        }
    }
}
