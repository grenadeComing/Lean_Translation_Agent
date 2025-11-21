import Mathlib

/-- Suppose that Z ⊂ ℂ is a domain in the complex plane and that g : Z → ℂ is a complex analytic function defined on Z. A logarithm for g(z) is a complex analytic function G : Z → ℂ such that g(z) = exp(G(z)).

This theorem states the equivalence (no proof): g has a holomorphic logarithm on Z iff (1) g(z) ≠ 0 for all z ∈ Z and (2) for every loop γ in Z the loop g ∘ γ is null-homotopic in ℂ \ {0}.
-/
theorem exists_analytic_log_iff_loops_nullhomotopic
  (Z : Set ℂ) (hZ_open : IsOpen Z) (hZ_conn : IsConnected Z)
  (g : ℂ → ℂ) (hg : AnalyticOn ℂ g Z) :
  (∃ G : ℂ → ℂ, AnalyticOn ℂ G Z ∧ ∀ z ∈ Z, g z = Complex.exp (G z)) ↔
  (∀ z ∈ Z, g z ≠ 0) ∧
  (∀ (γ : Loop Z), (g ∘ γ).IsNullHomotopic ({0} : Set ℂ)ᶜ) := by sorry
