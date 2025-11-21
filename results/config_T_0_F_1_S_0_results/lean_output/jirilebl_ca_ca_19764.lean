import Mathlib

/-!
Let U ⊂ ℂ be a domain (open and connected) and f : U → ℂ be holomorphic.
The main formal statement below asserts that f is analytic on U.

Remark (informal): moreover, for each z₀ ∈ U the Taylor series of f at z₀
has radius of convergence equal to the distance from z₀ to the complement of U
(i.e. to the nearest singularity), and the series sums to f on its disk of
convergence.
-/

theorem holomorphic_on_domain_analytic (U : Set ℂ) (f : ℂ → ℂ)
  (hU_open : IsOpen U) (hU_conn : IsConnected U) (hf : DifferentiableOn ℂ f U) :
  AnalyticOn ℂ f U := by sorry
