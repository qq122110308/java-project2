package com.ry;

import java.io.Serializable;
import java.util.List;

/** 
* @author ry 
* @version 创建时间：2017年12月21日 上午8:36:34 
* 类说明 
*/
public class PageInfo<T> implements Serializable {
	private static final long serialVersionUID = 1L;
    private int pageNum;
    private int pageSize;
    private long total;
    private int pages;
    private List<T> list;
    
    public PageInfo(int pageNum, int pageSize, long total, List<T> list) {
        this.pageNum = pageNum;
        this.pageSize = pageSize;
        this.setTotal(total);
        this.list = list;
    }

    public PageInfo() {
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
        if (this.pageSize > 0) {
            this.pages = (int) (total / (long) this.pageSize + (long) (total % (long) this.pageSize == 0L ? 0 : 1));
        } else {
            this.pages = 0;
        }
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }
}
 