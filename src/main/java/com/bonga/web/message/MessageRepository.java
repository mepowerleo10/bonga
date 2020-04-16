package com.bonga.web.message;

import com.bonga.web.message.Message;

import org.springframework.data.repository.CrudRepository;

public interface MessageRepository extends CrudRepository<Message, Long> {
}
