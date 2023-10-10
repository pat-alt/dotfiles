# Setup OhMyREPL, Revise and Term
import Pkg
let
    pkgs = ["Revise", "OhMyREPL", "Term", "IJulia", "PkgTemplates"]
    for pkg in pkgs
        if Base.find_package(pkg) === nothing
            Pkg.add(pkg)
        end
    end
end
using Revise
using OhMyREPL
using Term
# Setup Term
try
    import Term: install_term_stacktrace, install_term_logger, install_term_repr
    install_term_stacktrace()
    install_term_logger()
    # install_term_repr()
catch e
    @warn "Error initializing term" exception = (e, catch_backtrace())
end
# Environment variables
ENV["JULIA_EDITOR"] = "code"
# Package templates
function template(user::String="pat-alt")
    @eval begin
        using PkgTemplates
        Template(;
            user=$user,
            dir="~/code",
            authors="Patrick Altmeyer",
            julia=v"1.6",
            plugins=[
                BlueStyleBadge(),
                Citation(),
                Codecov(),
                Documenter{GitHubActions}(),
                Develop(),
                Git(; manifest=true),
                GitHubActions(),
                License(),
                RegisterAction(),
            ]
        )
    end
end