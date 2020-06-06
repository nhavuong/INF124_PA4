package productrestservice.resource;

import productrestservice.model.Product;
import productrestservice.service.ProductService;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

@Path("/products")
public class ProductResource {
    @Path("{id}")
    @GET
    @Produces( { MediaType.APPLICATION_JSON }) //This provides only JSON responses
    public Response getProductById(@PathParam("id") int id/* The {id} placeholder parameter is resolved */) {
        Product todo = ProductService.getProductById(id);

        if(todo == null) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }

        return Response.ok(todo).build();
    }

    @GET
    @Produces( { MediaType.APPLICATION_JSON })
    public Response getAllProducts() {
        List<Product> prodList = ProductService.getAllProducts();

        if(prodList == null || prodList.isEmpty()) {

        }

        return Response.ok(prodList).build();
    }

    @POST
    @Consumes({MediaType.APPLICATION_JSON}) //This method accepts a request of the JSON type
    public Response addProduct(Product prod) {

        //The todo object here is automatically constructed from the json request. Jersey is so cool!
        if(ProductService.AddProduct(prod)) {
            return Response.ok().entity("Product Added Successfully").build();
        }

        // Return an Internal Server error because something wrong happened. This should never be executed
        return Response.status(Response.Status.INTERNAL_SERVER_ERROR).build();


    }

    //Similar to the method above.
    @POST
    @Consumes({MediaType.APPLICATION_FORM_URLENCODED}) //This method accepts form parameters.
    //If you were to send a POST through a form submit, this method would be called.
    public Response addProduct(@FormParam("name") String name, 
                                @FormParam("description") String description,
                                @FormParam("imgHref") String imgHref,
                                @FormParam("price") double price,
                                @FormParam("quantity") int quantity ) {
        Product prod = new Product();
        prod.setName(name);
        prod.setDescription(description);
        prod.setImgHref(imgHref);
        prod.setPrice(price);
        prod.setQuantity(quantity);

        System.out.println(prod);

        if(ProductService.AddProduct(prod)) {
            return Response.ok().entity("Product Added Successfully").build();
        }

        return Response.status(Response.Status.INTERNAL_SERVER_ERROR).build();


    }

    @PUT
    @Path("{id}")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public Response updateProduct(@PathParam("id") int id, Product prod) {

        Product queryProd = ProductService.getProductById(id);

        if(queryProd == null) {
            return Response.status(Response.Status.NOT_FOUND).
                    entity("We could not find the requested product").build();
        }

        prod.setId(id);

        if(ProductService.updateProduct(prod)) {

            return Response.ok().entity(prod).build();
        }

        return Response.status(Response.Status.INTERNAL_SERVER_ERROR).build();


    }

    //This method represents a DELETE request where the id is provided as a path parameter and the request body is provided in JSON
    @DELETE
    @Path("{id}")
    @Consumes({MediaType.APPLICATION_FORM_URLENCODED, MediaType.APPLICATION_JSON})
    public Response deleteProduct(@PathParam("id") int id) {

        Product queryProd = ProductService.getProductById(id);


        if(queryProd == null) {
            return Response.status(Response.Status.NOT_FOUND).
                    entity("We could not find the requested product").build();
        }

        // This calls the JDBC method which in turn calls the DELETE SQL command.
        if(ProductService.deleteTodo(queryProd)) {
            return Response.ok().entity("product Deleted Successfully").build();
        }

        return Response.status(Response.Status.INTERNAL_SERVER_ERROR).build();


    }

}
