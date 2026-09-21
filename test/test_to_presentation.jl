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
        k = Kambites(twosided, p)

        q = Semigroups.to(k)

        @test q isa Presentation
        @test q == presentation(k)
        @test alphabet(q) == alphabet(p)
        @test rules(q) == rules(p)
    end

    @testset "conversion of alphabet + rules" begin
        p = Presentation()
        set_alphabet!(p, 3)
        add_rule_no_checks!(p, [1, 2, 1], [2, 3])
        add_rule_no_checks!(p, [3, 3], [1])
        k = Kambites(twosided, p)

        q = Semigroups.to(k)

        @test q == presentation(k)
        @test q == p
        @test alphabet(q) == alphabet(p)
        @test rules(q) == rules(p)
    end

    @testset "contains empty word" begin
        p = Presentation()
        set_alphabet!(p, 1)
        set_contains_empty_word!(p, true)
        k = Kambites(twosided, p)

        q = Semigroups.to(k)

        @test q == presentation(k)
        @test contains_empty_word(q)
    end

    @testset "matches Kambites presentation" begin
        p = Presentation()
        set_alphabet!(p, 2)
        add_rule_no_checks!(p, [1, 1], [2])
        k = Kambites(twosided, p)

        q = Semigroups.to(k)

        @test q == presentation(k)
        @test alphabet(q) == alphabet(presentation(k))
        @test rules(q) == rules(presentation(k))
    end
end
