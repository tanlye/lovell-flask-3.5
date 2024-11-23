resource "aws_ecr_repository" "private_repository" {
  name                 = "lovell-flask-private-repository"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}