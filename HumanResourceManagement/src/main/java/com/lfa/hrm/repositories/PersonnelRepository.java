/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.hrm.repositories;

import com.lfa.hrm.entity.Personnel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ZERO BYTE
 */
@Repository(value = "PersonnelRepository")
public interface PersonnelRepository
        extends JpaRepository<Personnel, Long> {

}
