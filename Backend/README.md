# Backend Nodejs Application for Athena Digital Solutions Portfolio Website and Process Tracker

## Models

    - Product:
        Contains All product data: 
            - Name
            - Avaialble
            - Packages
            - Purchased By
  
    - Package
        Sub Object for Product Object contains the packages data:
            - name
            - Description
            - Components
            - Delivery Date
            - Price
            - Purchased By
            - Available Offer

    - Offer
        Offer data with product and package id as important paramaters

    - Client
        Client Name, Orders, First Order Date, Client Email, Client Access Code

    - Order
        Client Id, Product Id, Packages Id, Offers Added, Placement Date, Delivery Date, Gallery Images

    - Process
        For Clients who already have open contracts the model contains the current step of the project to track process from client.


## Routes
    - product/
    - client/
    - offers/
    - process/
    - order/