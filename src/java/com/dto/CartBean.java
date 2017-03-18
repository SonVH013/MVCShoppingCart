/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dto;

import java.util.HashMap;

/**
 *
 * @author sonvu
 */
public class CartBean extends HashMap {

    public CartBean() {
        super();
    }
    
    public void addBook(BookDTO book) {
        String key = book.getTittle();
        if (this.containsKey(key)) {
            int oldQuantity = ((BookDTO)this.get(key)).getQuantity();
            ((BookDTO)this.get(key)).setQuantity(oldQuantity + 1);
        } else {
            this.put(book.getTittle(), book);
        }
    }
    
    public boolean delBook(String tittle) {
        if (this.containsKey(tittle)) {
            this.remove(tittle);
            return true;
        } else {
            return false;
        }
    }
}
