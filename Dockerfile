
FROM julia:1.10

WORKDIR /app

COPY . /app

RUN julia -e 'using Pkg; Pkg.instantiate()'

EXPOSE 8000
CMD ["julia", "--project=.", "main.jl"]
