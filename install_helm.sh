helm install -f helm/values/redis-service-values.yaml rediscart helm/charts/redis

helm install -f helm/values/adservice-service-values.yaml adservice helm/charts/microservice
helm install -f helm/values/cart-service-values.yaml cartservice helm/charts/microservice
helm install -f helm/values/checkout-values.yaml checkoutservice helm/charts/microservice
helm install -f helm/values/currency-service-values.yaml currencyservice helm/charts/microservice
helm install -f helm/values/email-service-values.yaml emailservice helm/charts/microservice
helm install -f helm/values/frontend-service-values.yaml frontend helm/charts/microservice
helm install -f helm/values/payment-service-values.yaml paymentservice helm/charts/microservice
helm install -f helm/values/productcatalog-service-values.yaml productcatalogservice helm/charts/microservice
helm install -f helm/values/recommendation-service-values.yaml recommendationservice helm/charts/microservice
helm install -f helm/values/shipping-service-values.yaml shippingservice helm/charts/microservice

