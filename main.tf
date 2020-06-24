data "external" "example" {
  program = ["bash", "eds.sh"]

  query = {
    # arbitrary map from strings to strings, passed
    # to the external program as the data query.
    id = "abc123"
  }
}


resource "local_file" "foo" {
    content     = data.external.example.result.foobaz
    filename = "foo.bar.txt"
}
