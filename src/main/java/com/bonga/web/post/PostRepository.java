package com.bonga.web.post;

import com.bonga.web.post.Post;

import org.springframework.data.repository.CrudRepository;

public interface PostRepository extends CrudRepository<Post, Long> {
}
