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
            - Description
            - Components
            - Delivery Date
            - Price
            - Purchased By
            - Available Offer

    - Offer
        Offer data with product and package id as important paramaters

    - Client
        Client Name, Products Ordered, Packages Ordered, First Probosal

    - Msg
        Chat Component Model contains the Text, SenderId, Time, Seen By

    - Chat
        Chat Room Model

    - Process
        For Clients who already have open contracts the model contains the current step of the project to track process from client.


## Routes
    - product/
    - service/
    - client/
    - chat/
    - offers/