package com.bonga.web.poll;

import com.bonga.web.poll.Poll;

import org.springframework.data.repository.CrudRepository;

public interface PollRepository extends CrudRepository<Poll, Long> {
}
