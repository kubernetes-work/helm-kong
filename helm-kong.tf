resource helm_release helm-kong {
    name       = "helm-kong"
    chart      = "${path.module}/helm-kong/"
    namespace = "helm-kong"
    create_namespace = true
    set {
        name  = "ingressController.installCRDs"
        value = false
    }      
}