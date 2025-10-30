import Mathlib

open Complex
open Set

/--
If U is an open connected subset of ℂ, f: U → ℂ is holomorphic and nonconstant, and p ∈ U,
then there exists δ > 0 such that the restriction of f to Δ_δ(p) \ { p } is an open map.
The statement is encoded here as a theorem with a placeholder proof (to be filled in).
-/
theorem exists_delta_open_map_of_nonconstant_holomorphic
  {U : Set ℂ} (hU : IsOpen U) (hUconn : IsConnected U)
  {f : ℂ → ℂ} (hf : HolomorphicOn f U) (p : ℂ) (hp : p ∈ U) :
  ∃ δ : ℝ, δ > 0 ∧ IsOpenMap (fun z : { z : ℂ // z ∈ ball p δ ∧ z ≠ p ∧ z ∈ U } => f z.1) := by
  sorry
