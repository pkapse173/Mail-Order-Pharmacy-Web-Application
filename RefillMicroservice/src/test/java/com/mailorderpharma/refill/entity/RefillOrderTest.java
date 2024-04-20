package com.mailorderpharma.refill.entity;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.time.LocalDate;
import java.util.Date;

import org.junit.jupiter.api.Test;

import com.mailorderpharma.refill.entity.RefillOrder;

class RefillOrderTest {

	Date date = new Date();
	RefillOrder refillOrder = new RefillOrder();

	@Test
	void testRefillId() {
		refillOrder.setId(1);
		assertEquals(1, refillOrder.getId());
	}

	@Test
	void testrefilledDate() {
		refillOrder.setRefilledDate(LocalDate.now());
		assertEquals(LocalDate.now(), refillOrder.getRefilledDate());
	}

	@Test
	void testPayStatus() {
		refillOrder.setPayStatus(true);
		assertEquals(true, refillOrder.getPayStatus());
	}

	@Test
	void testSubId() {
		refillOrder.setSubId(1);
		assertEquals(1, refillOrder.getSubId());
	}

	@Test
	void testRefillQuantity() {
		refillOrder.setQuantity(50);
		assertEquals(50, refillOrder.getQuantity());
	}

	@Test
	void testMemberId() {
		refillOrder.setMemberId("manali");
		assertEquals("manali", refillOrder.getMemberId());
	}

}
