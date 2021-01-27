FROM rust as builder
WORKDIR app
COPY . .
RUN cargo install diesel_cli --no-default-features --features postgres
RUN cargo build --release --bin voidtheory

FROM debian:buster-slim
COPY --from=builder /app/target/release/voidtheory .
COPY ./script.sh .
ENTRYPOINT ["./script.sh"]
