export hs26

function hs26(; n::Int = default_nvar, type::Val{T} = Val(Float64), kwargs...) where {T}
  return ADNLPModels.ADNLPModel(
    x -> (x[1] - x[2])^2 + (x[2] - x[3])^4,
    T[-2.6, 2.0, 2.0],
    x -> [(1 + x[2]^2) * x[1] + x[3]^4 - 3],
    zeros(T, 1),
    zeros(T, 1),
    name = "hs26";
    kwargs...,
  )
end
