import Mathlib

variable {G : Type _} [Group G] {H K : Subgroup G}

/-- Exercise: Let G be a group with subgroups H and K with H ≤ K. If H is characteristic in K
    and K is normal in G then H is normal in G. 

    Here we express "H is characteristic in K" by the statement that whenever conjugation by g
    preserves K as a set, it also preserves H as a set. This formulation is sufficient to deduce
    normality of H from normality of K. -/
theorem Dummit_Foote_exercise_4_4_8a
  (hHK : H ≤ K)
  (hchar : ∀ g : G,
    ((fun x => g * x * g⁻¹) '' (K : Set G) = (K : Set G)) →
    ((fun x => g * x * g⁻¹) '' (H : Set G) = (H : Set G)))
  (hnorm : ∀ g : G, (fun x => g * x * g⁻¹) '' (K : Set G) = (K : Set G)) :
  ∀ g : G, (fun x => g * x * g⁻¹) '' (H : Set G) = (H : Set G) := by sorry
