output "acm_certificate_arn" {
  description = "Arn of the ACM Certificate for the domain."
  value       = aws_acm_certificate.cert.arn
}
