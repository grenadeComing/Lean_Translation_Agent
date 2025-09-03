import Mathlib

universe u

variable {G : Type u} [Group G]

/-- The left coset gH as a subset of G. -/
def left_coset_set (g : G) (H : Subgroup G) : Set G := (fun x => g * x) '' (H : Set G)

/-- The type of left cosets of H in G as a subtype of sets of G. -/
def left_cosets (H : Subgroup G) : Type u := { s : Set G // ∃ g : G, s = left_coset_set g H }

/-- The type of left cosets of H by elements of K (viewed as subsets of G). -/
def left_cosets_in_K (H K : Subgroup G) : Type u := { s : Set G // ∃ k : K, s = left_coset_set (k : G) H }

/-- Exercise (Dummit & Foote, 3.2.11): If H ≤ K ≤ G, then |G : H| = |G : K| * |K : H|.
    We state it in terms of cardinals of the corresponding coset-types. -/
theorem Dummit_Foote_exercise_3_2_11 {H K : Subgroup G} (hHK : H ≤ K) :
  Cardinal.mk (left_cosets H) = Cardinal.mk (left_cosets K) * Cardinal.mk (left_cosets_in_K H K) := by sorry
