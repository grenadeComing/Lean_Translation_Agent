import Mathlib

/--
Let U ⊆ ℂ be a domain (an open connected set) and f : U → ℂ be holomorphic.
Then f is analytic on U; more precisely, for each z₀ ∈ U the function f has a
Taylor series expansion around z₀ with radius of convergence equal to the
distance from z₀ to the complement of U, and the series sums to f on the
corresponding open ball.
-/
theorem holomorphic_on_analytic_taylor_expansion {U : Set ℂ} {f : ℂ → ℂ}
  (hU : IsOpen U) (hconn : IsConnected U) (hf : IsHolomorphicOn f U) :
  AnalyticOn f U ∧
  ∀ z0 ∈ U, let r := dist z0 (Uᶜ) in 0 < r ∧ ball z0 r ⊆ U ∧
    ∃ (a : ℕ → ℂ), ∀ z ∈ ball z0 r, (∑' n : ℕ, a n * (z - z0) ^ n) = f z := by sorry
