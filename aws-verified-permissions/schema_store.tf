resource "aws_verifiedpermissions_policy_store" "schemas" {
  validation_settings {
    mode = "STRICT"
  }
}

resource "aws_verifiedpermissions_schema" "schemas_schema" {
  policy_store_id = aws_verifiedpermissions_policy_store.schemas.policy_store_id

  definition {
    value = file("model.json")
  }
}

resource "aws_verifiedpermissions_policy" "schemas_policies" {
  policy_store_id = aws_verifiedpermissions_policy_store.schemas.policy_store_id

  definition {
    static {
      statement = file("policy.cedar")
    }
  }
}
