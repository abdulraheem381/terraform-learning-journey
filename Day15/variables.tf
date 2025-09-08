variable "subnets" {
  description = "Subnets to create with for_each"
  type        = map(string)
  default = {
    public  = "10.0.10.0/24"
    private = "10.0.20.0/24"
    db      = "10.0.30.0/24"
  }
}

variable "instances" {
  description = "Instances with different AMIs"
  type        = map(string)
  default = {
    ubuntu = "ami-12345678"
    amazon = "ami-87654321"
    debian = "ami-56781234"
  }
}
