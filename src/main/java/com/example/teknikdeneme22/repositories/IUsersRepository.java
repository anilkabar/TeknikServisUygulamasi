package com.example.teknikdeneme22.repositories;

import com.example.teknikdeneme22.entities.model.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;


@Repository
public interface IUsersRepository extends JpaRepository<Users,Long> {
    Optional<Users> findByUserNameAndPassword(String userName,String password);
    Optional<Users> findByUserName(String userName);
}
