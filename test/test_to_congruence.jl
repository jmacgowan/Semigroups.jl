using Test
using Semigroups

@testset verbose = true "to Congruence" begin
    @testset "scaffolding" begin
        # Check both public conversion signatures.
        @test hasmethod(
            Semigroups.to,
            Tuple{Type{Congruence},congruence_kind,FroidurePin,Any},
        )
        @test hasmethod(Semigroups.to, Tuple{Type{Congruence},congruence_kind,WordGraph})
    end

    @testset "from FroidurePin" begin
        # Convert the right Cayley graph of a completed Froidure-Pin.
        fp = FroidurePin(Transf([2, 1, 3]), Transf([2, 3, 1]))
        run!(fp)
        c = Semigroups.to(Congruence, twosided, fp, right_cayley_graph(fp))

        @test c isa Congruence
        @test c isa CongruenceCommon
    end

    @testset "from WordGraph" begin
        # Convert a graph directly without a Froidure-Pin wrapper.
        wg = WordGraph(2, 1)
        target!(wg, 1, 1, 2)
        target!(wg, 2, 1, 2)

        c = Semigroups.to(Congruence, twosided, wg)

        @test c isa Congruence
        @test c isa CongruenceCommon
    end
end
