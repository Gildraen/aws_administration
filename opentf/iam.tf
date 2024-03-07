resource "aws_iam_user" "user" {
  for_each = var.users
  name     = each.value.name
  path     = each.value.path != "" ? "/${each.value.path}/" : "/"
}

resource "aws_iam_group" "group" {
  for_each = var.groups
  name     = each.value.name
  path     = each.value.path != "" ? "/${each.value.path}/" : "/"
}

resource "aws_iam_user_group_membership" "membership" {
  for_each = var.users
  user    = aws_iam_user.user[each.key].name
  groups  = [for group in each.value.groups : aws_iam_group.group[group].name]
}