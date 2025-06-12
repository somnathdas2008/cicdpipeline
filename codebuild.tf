resource "aws_codebuild_project" "terraform_build" {
  name          = "TerraformBuild"
  service_role  = aws_iam_role.codebuild_role.arn
  description   = "Build project for Terraform"

  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/standard:6.0"
    type                        = "LINUX_CONTAINER"
    privileged_mode             = true
  }

  source {
    type      = "GITHUB"
    location  = "https://github.com/${var.github_owner}/${var.github_repo}.git"
    buildspec = "buildspec.yml"
  }
}
