import Mathlib

open MonoidAlgebra

variable {R : Type _} {G : Type _} [Semiring R] [Group G] [Fintype G]

/-- Let G = {g1, ..., gn} be a finite group. The element N = \sum_i g_i of the group ring R[G]
    is in the center of R[G], i.e. it commutes with every element of the group ring. -/
noncomputable def N : MonoidAlgebra R G := (Finset.univ : Finset G).sum fun g => MonoidAlgebra.single g (1 : R)

theorem N_is_central : ∀ x : MonoidAlgebra R G, Commute (N : MonoidAlgebra R G) x := by sorry
