package com.ry.common; 
import java.io.Serializable;

import com.github.pagehelper.PageHelper;
/** 
* @author ry 
* @version 创建时间：2017年12月21日 上午9:38:39 
* 类说明 
*/
public abstract class AbstractPageForm<T extends AbstractPageForm<T>> implements  Serializable {
	private static final long serialVersionUID = 1L;
	
	 /**
     * @Description 页码为首页
     */
    protected int pageNum = 1;
    
    /**
     * @Description 每页显示数量，默认为10
     */
    protected int pageSize = 10;
  
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
  
    /**
     * @Title enablePaging
     * @Description 启用分页
     * @return
     */
    @SuppressWarnings("unchecked")
    public final T enablePaging() {
        PageHelper.startPage(pageNum, pageSize);
        return (T) this;
    }
    
}
 