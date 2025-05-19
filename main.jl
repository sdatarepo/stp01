
using Pkg
Pkg.activate(".")
using Stipple, StippleUI, Genie

@genie app

@app begin
    @in counter = 0
    @onbutton "increment" counter += 1
end

route("/") do
    page(vm, [
        h1("Welcome to Stipple on Fly.io"),
        p("Counter value: {{ counter }}"),
        button("Increment", @click("increment"))
    ])
end

Genie.up(8000, "0.0.0.0")
