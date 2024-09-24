variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    #default = "t2.micro"
    #we can restrict the user by implementing few options
    #allow my instance type only t2.micro and t3.nano only
    validation {
        condition = contains(["t2.micro", "t3.nano"], var.instance_type)
        error_message = "instance type is t2.micro and t3.nano only"
    }

}

variable "security_group_ids" {
    type = list(string)
    #default = ["sg-0bb5c6e23141d9743"]
}