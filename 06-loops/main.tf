variable "b1" {
  default = 5
}

resource "null_resource" "nothing" {
  count = var.b1
}

variable "b2" {
  default = ["apple", "banana"]
}

resource "null_resource" b2 {
  count = length(var.b2)
}

variable "b3" {
  default = {
    apple = {
      name = "apple"
      count = 3
    }
    banana = {
      name  = "banana"
      count = 30
    }
  }
}

resource "null_resource" "d3" {
  for_each = var.b3                             ## for each used for resource side
}

output "FRUITS" {
  value = [for i in var.b2 : upper(i)]             ## these expressions comes for output side
}


