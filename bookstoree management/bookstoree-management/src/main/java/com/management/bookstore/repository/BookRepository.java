package com.management.bookstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.management.bookstore.entity.Book;

public interface BookRepository extends JpaRepository<Book, Long>{
	
}