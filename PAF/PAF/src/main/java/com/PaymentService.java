package com;

import model.Payment;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
//For JSON
import com.google.gson.*;
//For XML
import org.jsoup.*;
import org.jsoup.parser.*;
import org.jsoup.nodes.Document;
@Path("/pay")
public class PaymentService {
	
	Payment pay = new Payment();
	
	@GET
	@Path("/Payment")
	@Produces(MediaType.TEXT_HTML)
	public String readItems()
	 {
	 return pay.readItems();
	 } 

}
