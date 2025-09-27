import Mathlib

open Subgroup

variable {G : Type _} [Group G] [Fintype G]
variable (is_p_sylow : ℕ → Subgroup G → Prop)

/-- A simple definition of normality for a subgroup: closed under conjugation. -/
def is_normal (H : Subgroup G) : Prop :=
  ∀ a x, x ∈ (H : Set G) → a * x * a⁻¹ ∈ (H : Set G)

/-- Exercise statement: If P is a p-Sylow subgroup of G and P is normal in G, then P is the
    only p-Sylow subgroup of G. -/
theorem Herstein_exercise_2_11_6 {p : ℕ} (P Q : Subgroup G)
    (hP : is_p_sylow p P) (hQ : is_p_sylow p Q) (hP_normal : is_normal P) : P = Q := by sorry
