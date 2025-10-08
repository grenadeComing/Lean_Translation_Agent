import Mathlib

/-!
Translate the statement:
If a group Γ acts on a topological space X and X/Γ is compact, then every orbit Γ x ⊂ X contains a point x with compact stabilizer, and moreover X contains a compact set intersecting every Γ-orbit.

We formalize this by assuming there is a continuous surjection `proj : X → Y` identifying points of X iff they lie in the same Γ-orbit, and that Y is compact. From this one can deduce the two conclusions below.
-/

open Set Function

variable {Γ X Y : Type _}
variable [Group Γ] [TopologicalSpace Γ] [TopologicalSpace X] [TopologicalSpace Y]
variable [MulAction Γ X] [ContinuousSMul Γ X]
variable [CompactSpace Y]

/-- `proj : X → Y` is a continuous surjection identifying points of the same Γ-orbit. -/
variable (proj : X → Y) (hcont : Continuous proj) (hsurj : Surjective proj)
variable (hproj_iff : ∀ x y : X, proj x = proj y ↔ ∃ g : Γ, g • x = y)

lemma exists_point_in_orbit_with_compact_stabilizer :
  ∀ x : X, ∃ y ∈ MulAction.orbit Γ x, IsCompact (MulAction.stabilizer Γ y : Set Γ) :=
by sorry

lemma exists_compact_subset_meeting_every_orbit :
  ∃ K : Set X, IsCompact K ∧ ∀ x : X, (MulAction.orbit Γ x ∩ K).Nonempty :=
by sorry
