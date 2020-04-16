package com.bonga.web.comment;

import com.bonga.web.comment.Comment;

import org.springframework.data.repository.CrudRepository;

public interface CommentRepository extends CrudRepository<Comment, Long> {
}
