# Run RDChoke - Github Action

Run RDChoke as a Github Action.

RDChoke tests all given scenario's of all given stories.

TODO

Usage:
```

      - name: Run RDChoke
        uses: agnos-ai/rdchoke-action@main
        with:
          project: customer-code-ekg
          organization: customer-code
          metadata-directory: test/metadata
          output-directory: rdchoke-output
          ekg-base-iri: https://project-code.agnos.ai
          database-endpoint: http://triplestore:5820

```
