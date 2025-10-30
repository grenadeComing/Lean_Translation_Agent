import Mathlib

universe u v

variable {X : Type u} [MetricSpace X]
variable {Γ : Type v} [Group Γ]
variable [MulAction Γ X]
variable (I : ∀ g : Γ, Isometry fun x : X => g • x)

-- Translation: Any two points of a metric space with a Γ-action by isometries can be separated by
-- disjoint Γ-invariant open neighborhoods. Here we encode the statement as the existence of Γ-invariant
-- open neighborhoods U, V for any two distinct points.
 theorem benmckay_top_covering_spaces_271_equiv
   : (∀ x y : X, x ≠ y → ∃ U V : Set X,
         IsOpen U ∧ IsOpen V ∧ x ∈ U ∧ y ∈ V ∧ U ∩ V = (∅ : Set X) ∧
         (∀ g : Γ, ∀ x ∈ U, g • x ∈ U) ∧ (∀ g : Γ, ∀ x ∈ V, g • x ∈ V)) := by
   intro x y hxy
   sorry
