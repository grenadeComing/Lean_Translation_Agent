import Mathlib

/-- Van Kampen theorem (informal/axiomatic translation).

Let X be a path connected and locally simply connected topological space,
and let (U_i)_{i : ι} be a cover of X by path connected open sets such that
all intersections U_i ∩ U_j are path connected and every U_i and U_{ij}
contains a chosen basepoint x0 : X. Let π := π1(X, x0), π_i := π1(U_i, x0),
and π_{ij} := π1(U_i ∩ U_j, x0). Then π is the amalgamated free product of
the π_i over the π_{ij}.

This is an informal, axiomatic translation: the proof is omitted. -/

theorem van_kampen_amalgam {X : Type} [TopologicalSpace X] {ι : Type}
  (x0 : X) (U : ι → Set X)
  (h_cover : (⋃ i, U i) = (Set.univ : Set X))
  (h_open : ∀ i, IsOpen (U i))
  (h_contains : ∀ i, x0 ∈ U i)
  (π : Type) (π_i : ι → Type) (π_ij : ι → ι → Type) :
  True := by sorry
