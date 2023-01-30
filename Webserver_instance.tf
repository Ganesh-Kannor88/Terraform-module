provider "aws" {
    region1 = var.region
}

module "webserver"{
    source = ".//tf_module"
    region = "${var.region}"
    type_webserver = "${var.type_webserver}"
    ami_webserver = "${var.ami_webserver}"
}

output "mypublicip"{
    value = module.webserver.publicip
}
