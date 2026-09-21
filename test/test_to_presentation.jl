using Test
using Semigroups

@testset verbose = true "to Presentation" begin
    @testset "scaffolding" begin
        @test isdefined(Semigroups, :to)
        @test hasmethod(Semigroups.to, Tuple{Kambites})
    end

    @testset "conversion with no rules" begin
        p = Presentation()
        set_alphabet!(p, 3)

        q = Semigroups.to(Kambites(twosided, p))

        @test q isa Presentation
        @test alphabet(q) == alphabet(p)
        @test rules(q) == rules(p)
    end

    @testset "conversion of alphabet + rules" begin
        p = Presentation()
        set_alphabet!(p, 3)
        add_rule_no_checks!(p, [1, 2, 1], [2, 3])
        add_rule_no_checks!(p, [3, 3], [1])

        q = Semigroups.to(Kambites(twosided, p))

        @test q == p
        @test alphabet(q) == alphabet(p)
        @test rules(q) == rules(p)
    end

    @testset "contains empty word" begin
        p = Presentation()
        set_alphabet!(p, 1)
        set_contains_empty_word!(p, true)

        q = Semigroups.to(Kambites(twosided, p))

        @test contains_empty_word(q)
    end

    @testset "copy semantics" begin
        p = Presentation()
        set_alphabet!(p, 2)
        add_rule_no_checks!(p, [1, 1], [2])

        q = Semigroups.to(Kambites(twosided, p))
        add_rule_no_checks!(q, [2, 2], [1])

        @test q !== p
        @test length(rules(p)) == 1
        @test length(rules(q)) == 2
    end
end
