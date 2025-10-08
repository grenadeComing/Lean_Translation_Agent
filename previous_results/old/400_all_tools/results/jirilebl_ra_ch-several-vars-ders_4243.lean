import Mathlib

open Set Metric
open BigOperators

variable {n : ℕ}
variable {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
variable (grad : (Fin n → ℝ) → (Fin n → ℝ))
variable (Hess : (Fin n → ℝ) → (Fin n → ℝ) → (Fin n → ℝ) → ℝ)

/-- Let f : ℝ^n → ℝ be differentiable and H_f is continuous on a convex set U. 

We state the second order Taylor expansion with remainder o(‖h‖^2) uniformly on compact subsets of U
as an ε-δ statement. We assume `grad` and `Hess` are given and `Hess` is continuous on U.
-/
theorem taylor_second_order_uniform_on_compacts
  (U_convex : Convex ℝ U)
  (Hess_cont : ContinuousOn (fun x => fun u v => Hess x u v) U) :
  ∀ (K : Set (Fin n → ℝ)), IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : Fin n → ℝ,
      ‖h‖ < δ → x + h ∈ U →
        |f (x + h) - f x - (∑ i : Fin n, (grad x i) * (h i)) - (1 / 2 : ℝ) * Hess x h h| ≤ ε * ‖h‖ ^ 2 := by
  sorry
