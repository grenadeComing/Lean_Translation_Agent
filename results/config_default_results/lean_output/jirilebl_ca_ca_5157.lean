import Mathlib
open Set Filter TopologicalSpace MeasureTheory
open scoped Topology
open scoped Interval

/-- Suppose U subset of C is open, and psi : U × I → C is a continuous function such that for each fixed t ∈ [0,1], the function z ↦ psi (z, t) is holomorphic. Then h(z) = ∫_0^1 psi (z, t) dt is a holomorphic function on U. -/
theorem analytic_of_continuous_of_analytic_on_Icc {U : Set ℂ} (hU : IsOpen U) {ψ : U × I → ℂ}
    (hψ : Continuous ψ) (hψ' : ∀ t : I, AnalyticOn ℂ (fun z => ψ (z, t)) U) : AnalyticOn ℂ (fun z => ∫ t : I, ψ (z, t)) U := by
  sorry