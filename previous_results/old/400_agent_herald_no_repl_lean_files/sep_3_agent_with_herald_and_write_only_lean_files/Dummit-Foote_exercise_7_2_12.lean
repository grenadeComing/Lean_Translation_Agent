import Mathlib

variable {R : Type*} [CommRing R]
variable {G : Type*} [Group G] [Fintype G]

open Finset

noncomputable def N : MonoidAlgebra R G := (Finset.univ : Finset G).sum fun g => MonoidAlgebra.of R G g

theorem N_is_central : N ∈ Center (MonoidAlgebra R G) := by sorry
