function Find --wraps=find\ .\ -not\ -path\ \'\*/\\.venv/\*\'\ -not\ -path\ \'\*/\\.mypy_cache/\*\'\ -not\ -path\ \'\*/__pycache__/\*\'\ -not\ -path\ \'\*/\\.git/\*\'\ -type\ f\ -not\ -name\ \'\*.osm.pbf\' --description alias\ Find=find\ .\ -not\ -path\ \'\*/\\.venv/\*\'\ -not\ -path\ \'\*/\\.mypy_cache/\*\'\ -not\ -path\ \'\*/__pycache__/\*\'\ -not\ -path\ \'\*/\\.git/\*\'\ -type\ f\ -not\ -name\ \'\*.osm.pbf\'
  find . -not -path '*/\.venv/*' -not -path '*/\.mypy_cache/*' -not -path '*/__pycache__/*' -not -path '*/\.git/*' -type f -not -name '*.osm.pbf' $argv; 
end
