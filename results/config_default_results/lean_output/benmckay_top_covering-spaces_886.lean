import Mathlib

variable {A : Type _}
variable {π : Type _} [Group π]
variable {π_a : A → Type _} [∀ a, Group (π_a a)]
variable {π_ab : A → A → Type _} [∀ a b, Group (π_ab a b)]

variable (f_ab_a : ∀ a b, (π_ab a b) →* (π_a a))
variable (f_ab_b : ∀ a b, (π_ab a b) →* (π_a b))
variable (ι : ∀ a, (π_a a) →* π)
variable (h_comp : ∀ a b, (ι a).comp (f_ab_a a b) = (ι b).comp (f_ab_b a b))

variable {Γ : Type _} [Group Γ]
variable (φ_a : ∀ a, (π_a a) →* Γ)
variable (hφ : ∀ a b, (φ_a a).comp (f_ab_a a b) = (φ_a b).comp (f_ab_b a b))

/-- Algebraic translation of the van Kampen-type statement:
Given a group π and groups π_a together with maps ι_a : π_a →* π compatible on the overlaps π_ab,
and given homomorphisms φ_a : π_a →* Γ which agree on each π_ab, there is a unique
group homomorphism φ : π →* Γ extending all the φ_a.
-/
theorem van_kampen_group_gluing :
  ∃! (φ : π →* Γ), ∀ a, (φ.comp (ι a) = φ_a a) := by sorry
