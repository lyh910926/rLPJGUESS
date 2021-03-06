#' @title The function to close MPI connection on cluster.
#' @description This function will close slaves and finalize mpi.
#' @seealso  \url{https://cran.r-project.org/web/packages/Rmpi/Rmpi.pdf}
#' @export
#' @keywords rLPJGUESS
#' @author Ramiro Silveyra Gonzalez, Maurizio Bagnara, Florian Hartig
#' @details The exitMPI should be use when working on MPI clusters. It must be
#' called at the end of you script. Be aware that when mpi is exited, it will be
#' no longer possible to work on MPI clusters without relaunching R.
#' The function is a wrapper of mpi.finalize from the Rmpi package. Check the
#' package manual for futher advise on using mpi.finalize and mpi.quit.
#'
#' @example /inst/examples/exitMPIHelp.R
exitMPI <- function(){
  if (is.loaded("mpi_initialize")){
    if (Rmpi::mpi.comm.size(comm =1) > 1){
      message("Please use mpi.close.Rslaves() to close slaves")
      Rmpi::mpi.close.Rslaves(comm=1, dellog = FALSE)
    }
  }
  message("Please use mpi.quit() to quit R")
  Rmpi::mpi.finalize() # Dont need to specify type
}
