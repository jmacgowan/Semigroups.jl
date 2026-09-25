using Test
using Semigroups

@testset verbose = true "to FroidurePin" begin
    @testset "scaffolding" begin
        # Check the WordGraph conversion method is available.
        @test hasmethod(Semigroups.to, Tuple{Type{FroidurePin},WordGraph})
    end

    @testset "from WordGraph" begin
        # The current binding produces the UInt8 transformation variant.
        wg = WordGraph(2, 1)
        target!(wg, 1, 1, 2)
        target!(wg, 2, 1, 2)

        fp = Semigroups.to(FroidurePin, wg)

        @test fp isa FroidurePin{Transf{UInt8}}
        @test number_of_generators(fp) == 1
        @test degree(fp) == 2
    end
end
