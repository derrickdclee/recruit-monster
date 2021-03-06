package spring.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import spring.model.Post;

@Repository("postDao")
public class PostDao extends AbstractDao<Integer, Post> implements IPostDao{

	public Post findById(int id) {
		return getByKey(id);
	}

	public void savePost(Post post) {
		persist(post);
	}
	
	public void deletePostById(int id){
		Query query = getSession().createSQLQuery("delete from Posts where id = :id");
		query.setInteger("id", id);
		query.executeUpdate();
	}

	@SuppressWarnings("unchecked")
	public List<Post> findAllPosts() {
		Criteria criteria = createEntityCriteria();
		return (List<Post>) criteria.list();
	}
	
	@SuppressWarnings("unchecked")
	public List<Post> findPostsByUserName(String userName) {
		Query query = getSession().createSQLQuery("SELECT * FROM Post WHERE user_name = :u_name").addEntity(Post.class);
		query.setString("u_name", userName);
		return (List<Post>) query.list();		
	}
}
