package com.tasteZip.infra.modules.comment;

import java.util.List;
import javax.annotation.Resource;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CommentDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.tasteZip.infra.modules.comment.CommentMapper";
	
	public List<Comment> myReview(CommentVo vo){ 
		return sqlSession.selectList(namespace + ".myReview", vo);
	}
	
	public List<Comment> storeComment(CommentVo vo) { 
		return sqlSession.selectList(namespace + ".storeComment", vo); 
	}
	
	public int selectOneCount(CommentVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	// ------------------
	public List<Comment> selectList2(CommentVo vo) { 
		return sqlSession.selectList(namespace + ".selectList2", vo); 
	}
	
    public int selectOneCount2(CommentVo vo) { 
    	return sqlSession.selectOne(namespace +".selectOneCount2", vo); 
	}
    public Comment selectOne(CommentVo vo) {
    	return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
    
    public int regComment(Comment dto) {return sqlSession.insert(namespace + ".regComment", dto); }
	public int update(Comment dto) {return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Comment dto) {return sqlSession.update(namespace + ".uelete", dto); }
	public int ueleteMypage(Comment dto) {return sqlSession.update(namespace + ".ueleteMypage", dto); }
	public int delete(CommentVo vo) {return sqlSession.delete(namespace + ".delete", vo); }
	
	// 스토어 이미지 & 정보
    public List<Comment> selectImg(CommentVo vo) { return sqlSession.selectList(namespace + ".selectImg", vo); }
    public Comment xdminSelectOne(CommentVo vo){ return sqlSession.selectOne(namespace + ".xdminSelectOne", vo); }
	
}
