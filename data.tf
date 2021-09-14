data "aws_iam_policy_document" "s3_policy" {
  statement {
    sid = "PublicReadGetObject"
    effect = "Allow"

    actions = [ "s3:GetObject" ]
    resources = [ "${aws_s3_bucket.site.arn}/*" ]
    principals {
      type = "AWS"
      identifiers = [ aws_cloudfront_origin_access_identity.site.iam_arn ]
    }
  }
}

data "aws_route53_zone" "personal_page" {
  name = "dmandyna.co.uk"
  private_zone = false
}
